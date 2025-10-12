package com.example.board;

import org.springframework.ui.Model;

public interface BoardService {
  public String writeOk(BoardDto boardDto);
  public String view(int id, Model model);
}
