package com.example.board;

import org.springframework.ui.Model;

public interface BoardService {
  public String writeOk(BoardDto boardDto);
  public String view(int id, Model model);
  public String postReadnum(int id);
  public String list(int id, Model model);
}
