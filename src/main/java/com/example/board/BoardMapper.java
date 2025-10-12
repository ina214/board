package com.example.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
  // int : 성공한 행(row)의 수 (예: 1)
  // void : 리턴 없음 (돌려줄 값이 없다는 의미)
  // BoardDto : 객체 반환 ( 조회할 때 )
  // List<BoardDto> : 목록 반환
  // String : 사용불가. 지원하지 않음.

  public int writeOk(BoardDto boardDto);
  public BoardDto view(int id);
  public void postReadnum(int id);
  public List<BoardDto> list(int id);
}
