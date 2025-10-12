package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;



@Controller
public class BoardController {

  @Autowired
  private BoardService service;
  
  @GetMapping("/")
  public String home() {
      return "redirect:/list";
  }
  
  // 게시판 글 작성
  @GetMapping("/write")
  public String write() {   // 요청할 내용이 없음
    return "/write";
  }

  // 게시판 글 작성 후 저장 버튼 클릭시 실행
  @PostMapping("/writeOk")
  public String writeOk(BoardDto boardDto)
  {
    // BoardDto : 사용자가 입력한 정보를 BoardDto 객체에 바인딩
    // HttpSession : 로그인 사용자 정보를 가져오기 위해 사용. (작성자 아이디를 함께 저장 가능)
    return service.writeOk(boardDto);
  }
  
  // 게시판 글 보기
  @GetMapping("/view")
  public String view(@RequestParam("id") int id, Model model)
  {
    return service.view(id, model);
  }
  // 조회수
  @GetMapping("/postReadnum")
  public String postReadnum(@RequestParam("id") int id) {
      return service.postReadnum(id);
  }
  
  // 게시판 목록
  @GetMapping("/list")
  public String list(@RequestParam("id") int id, Model model) {
      return service.list(id, model);
  }
}
