package com.example.board;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {  // xml과 이름 맞춰줘야 함
  // DB접근은 mapper에서 가능
  // 생략 가능 : 같은 패키지에서만 접근.
  // public : 다른 패키지에서도 접근 가능하도록 붙여줌.
  public void writeOk(BoardDto bdto);
  public ArrayList<BoardDto> list(int index);  // ArrayList는 하나 이상의 데이터를 담아옴
  public void readnum(int id);
  public BoardDto content(int id);
  public BoardDto update(int id);
  public void updateOk(BoardDto bdto);
  public void delete(int id);
  public int getChong();
}
