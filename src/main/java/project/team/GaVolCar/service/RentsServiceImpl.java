package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.RentsMapper;
import project.team.GaVolCar.vo.CarsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.UsersVO;

@Slf4j
@Service
public class RentsServiceImpl implements RentsService {
	
	@Autowired
	private RentsMapper rentsMapper;
	
	//예약리스트 불러오기
	@Override
	public List<RentsVO> getRentsList(String user_id){
		log.info("getRentsList....");
		return rentsMapper.getRentsList(user_id);
	}
	
	//회원정보 불러오기
	@Override
	public UsersVO getRentsUsers(String user_id){
		log.info("getRentsUser....");
		return rentsMapper.getRentsUsers(user_id);
	}
	
	//예약 정보 불러오기
	@Override
	public RentsVO getRentsInfo(int rez_no) {
		log.info("getRentsInfo....");
		return rentsMapper.getRentsInfo(rez_no);
	}
	
	//예약 정보 삽입(추가)
	@Override
	public void insertRents(RentsVO rentsVO) {
		log.info("insertRents....");
		
		rentsMapper.insertRents(rentsVO);
	}
	
	//예약 정보 수정(업데이트)
	@Override
	public int updateRents(RentsVO rentsVO) {
		log.info("updateRents.....");
		return rentsMapper.updateRents(rentsVO);
	}
	
	//예약 정보 삭제
	@Override
	public int deleteRents(RentsVO rentsVO) {
		log.info("deleteRents.....");
		return rentsMapper.deleteRents(rentsVO);
	}
	
	//차량 정보 리스트 불러오기
	@Override
	public List<CarsVO> getRentsCarsList(){
		log.info("getRentsCarsList....");
		return rentsMapper.getRentsCarsList();
	}
	
	//차량 정보불러오기
	@Override
	public CarsVO getRentsCarsInfo(int car_no){
		log.info("getRentsCarsList....");
		return rentsMapper.getRentsCarsInfo(car_no);
	}
}