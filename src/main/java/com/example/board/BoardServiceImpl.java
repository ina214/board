package com.example.board;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class BoardServiceImpl implements BoardService {

  @Autowired
  private BoardMapper mapper;

  // 글작성
  @Override
  public String writeOk(BoardDto boardDto)
  {
    mapper.writeOk(boardDto);
    
    return "redirect:view?id="+boardDto.getId();
  }

  // 글상세
  @Override
  public String view(int id, Model model)
  {
    // id에 해당하는 게시글 데이터를 boardDto에 담기
    BoardDto boardDto=mapper.view(id);

    // content에 입력된 줄바꿈 코드를 html의 br태그로 변환
    boardDto.setContent(boardDto.getContent().replace("\r\n", "<br>"));
    // LocalDateTime 타입을 java.util.Date 타입으로 변환
    // BoardUtils로 따로 관리
    Date writedayDate = BoardUtils.toDate(boardDto.getWriteday());
    
    // 변환된 Date를 model로 담아서 전달
    model.addAttribute("writedayDate", writedayDate);
    //  게시글 데이터를 model로 담아서 전달
    model.addAttribute("boardDto", boardDto);

    return "view";
  }
  // 조회수
  @Override
  public String postReadnum(int id)
  {
    mapper.postReadnum(id);
    return "redirect: view?id="+id;
  }

  // 게시글 목록
  @Override
  public String list(int id, Model model)
  {
    BoardDto boardDto=mapper.view(id);
    model.addAttribute("boardDto", boardDto);
    return "list";
  }

}
