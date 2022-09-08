package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.UsersVO;

public interface RentsService {
	//예약 리스트 불러오기
	public List<RentsVO> getRentsList(String user_id); 
	//예약 정보 가져오기
	RentsVO getRentsInfo(int rez_no);
	//예약 데이터 생성
	void insertRents(RentsVO rentsVO);
	//예약 데이터 수정
	int updateRents(RentsVO rentsVO);
	//예약 데이터 삭제
	int deleteRents(RentsVO rentsVO);
	//회원 정보 불러오기
	UsersVO getRentsUsers(String user_id);
	//차량 리스트 불러오기
	public List<CarsVO> getRentsCarsList();
	//특정 차량 정보불러오기
	public CarsVO getRentsCarsInfo(int car_no);
}