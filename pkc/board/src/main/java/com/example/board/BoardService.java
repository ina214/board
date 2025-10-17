package com.example.board;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class BoardService {
  @Autowired
  private BoardMapper mapper;

  public String write() 
  {
    return "/write";
  }

  public String writeOk(BoardDto bdto) 
  {
    // bdto의 값을 board 테이블에 저장

    // --- 목록 강제생성
    // String[] names={"홍길동","슈퍼맨","배트맨","나야나","뽀로로"};

    // for(int i=0;i<=1654;i++)
    // {
    //   bdto.setTitle("페이지 연습입니다"+i);
    //   int n=(int)(Math.random()*5);
    //   bdto.setName(names[n]);
    //   mapper.writeOk(bdto);
    // }
    // --- 목록 강제생성 ----

    mapper.writeOk(bdto);

    return "redirect:/list";
  }

  public String list(Model model, int page) 
  {
    // board 테이블에 값을 읽어오기
    //ArrayList<BoardDto> list=mapper.list();  // arrayList로 받아서 list에 담아서
    // model.addAttribute("list", list);        // list라는 이름으로 뷰에 전달
    // page => 인덱스 만들기
    int index=(page-1)*10;  // (페이지-1)*레코드수
    
    // board 테이블에 값을 읽어오기
    ArrayList<BoardDto> list=mapper.list(index);
    model.addAttribute("list", list);

    int pstart, pend, chong;
    pstart=page/10;
    if(page%10==0) {
      pstart--;
    }
    
    pstart=(pstart*10)+1;

    pend=pstart+9;

    chong=mapper.getChong();

    if(pend>chong) {
      pend=chong;
    }

    model.addAttribute("page",page);
		model.addAttribute("pstart",pstart);
		model.addAttribute("pend",pend);
		model.addAttribute("chong",chong);
    
    // 뷰에 전달
    
    return "/list";
  }

  public String readnum(int id) 
  {
    // 조회수를 증가시키기
    mapper.readnum(id);

    // content로 이동
    return "redirect:/content?id="+id;
  }

  public String content(int id, Model model) 
  {
    // id에 해당되는 하나의 레코드를 뷰에 전달
    BoardDto bdto=mapper.content(id);

    // 화면에서 취미 보내기 --
    String[] hobbys=bdto.getHobby().split(",");   // 1, 3, 5
    model.addAttribute("hobbys", hobbys);
    // -- 화면에서 취미 보내기

    // 서비스에서 취미를 종합해서 보내기 --
    String hobby2="";
    for(int i=0; i<hobbys.length; i++) {

      switch (hobbys[i]) {
        case "0": hobby2=hobby2+"낚시 "; break;
        case "1": hobby2=hobby2+"여행 "; break;
        case "2": hobby2=hobby2+"독서 "; break;
        case "3": hobby2=hobby2+"음악 "; break;
        case "4": hobby2=hobby2+"댄스 "; break;
        case "5": hobby2=hobby2+"멍때리기 "; break;
      }
    }
    model.addAttribute("hobby2", hobby2);
    // -- 서비스에서 취미를 종합해서 보내기

    String juso="";
    switch(bdto.getJuso())
    {
      case 0: juso="경기도"; break;
      case 1: juso="서울특별시"; break;
      case 2:	juso="충청도"; break;
      case 3:	juso="전라도"; break;
      case 4:	juso="강원도"; break;
      case 5:	juso="경상도"; break;
      case 6:	juso="제주도"; break;
    }
    model.addAttribute("juso",juso);

    // content 줄바꿈
    String content=bdto.getContent().replace("\r\n", "<br>");
    bdto.setContent(content);

    model.addAttribute("bdto", bdto);

    // content로 이동
    return "/content";
  }

  public String update(int id, Model model)
  {
    // 수정할 레코드를 읽기
    BoardDto bdto=mapper.update(id);
    
    // 수정할 레코드의 내용을 전달 (폼태그)
    model.addAttribute("bdto", bdto);

    return "/update";
  }

  public String updateOk(BoardDto bdto) 
  {
    // bdto의 값을 업데이트
    mapper.updateOk(bdto);

    return "redirect:/content?id="+bdto.getId();
  }

  public String delete(int id) 
  {
    mapper.delete(id);

    return "redirect:/list";
  }

}