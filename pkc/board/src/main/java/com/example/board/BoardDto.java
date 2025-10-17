package com.example.board;

import lombok.Data;

@Data
public class BoardDto {
  private int id, sung, juso, readnum;
  private String title, name, pwd, content, hobby, writeday;
}
