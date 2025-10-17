package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BoardController {

  @Autowired
  private BoardService service;
  
  @GetMapping("/write")
  public String write() 
  {
      return service.write();  // 보여줄 뷰
  }

  @PostMapping("/writeOk")
  public String writeOk(BoardDto bdto) 
  {
    // 
    return service.writeOk(bdto);
  }
  
  @GetMapping("/list")
  public String list(Model model, 
        @RequestParam(defaultValue = "1") int page)   // 자동으로 1을 만들어줌
  {
    return service.list(model, page);  // 보여줄 뷰
  }

  @GetMapping("/readnum")  // 조회수 증가 후 content로 이동
  public String readnum(@RequestParam("id") int id) 
  {
    return service.readnum(id);
  }

  @GetMapping("/content")  // 조회수 증가 후 content로 이동
  public String content(@RequestParam("id") int id, Model model) 
  {
    return service.content(id, model);
  }

  @GetMapping("/update")  // 수정을 위한 폼태그를 보여주기(기존데이터)
  public String update(@RequestParam("id") int id, Model model) 
  {
    return service.update(id, model);
  }

  @PostMapping("/updateOk")
  public String updateOk(BoardDto bdto) 
  {
    // 
    return service.updateOk(bdto);  // update에 필요한 dto를 service로 보낸다
  }

  @GetMapping("/delete")
  public String delete(@RequestParam("id") int id)
  {
    return service.delete(id);
  }
}
