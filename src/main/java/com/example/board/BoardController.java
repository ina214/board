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
  public String write() {
    return "/write";
  }

  // 게시판 글 보기
  @GetMapping("/view")
  public String view()
  {
    return "/view";
  }
  
  // 게시판 목록
  @GetMapping("/list")
  public String list() {
    return "/list";
  }
}
