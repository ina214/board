package com.example.board;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class BoardDto {
  private int id, readnum;
  private String title, name, content;
  private LocalDateTime writeday;
}
