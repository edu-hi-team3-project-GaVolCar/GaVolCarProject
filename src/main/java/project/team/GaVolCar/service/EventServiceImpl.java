package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.EventMapper;
import project.team.GaVolCar.vo.CeventsBoardsVO;
import project.team.GaVolCar.vo.CeventsVO;
import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;

@Slf4j
@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventMapper eventMapper;
	
	@Override
	public List<PeventsRentsVO> getPeventsRentsList(){
		log.info("getPeventsRentsList() is working.....");
		return eventMapper.getPeventsRentsList();
	}

	@Override
	public List<PeventsRentsVO> getPointsInfo(String user_id) {
		log.info("getPointsInfo() is working...");
		
		
		return eventMapper.getPointData(user_id);
	}

	@Override
	public List<CeventsVO> getCeventsList() {
		log.info("getCeventsList() is working...");
		return eventMapper.getCeventsList();
	}

	@Override
	public List<CeventsBoardsVO> getCeventBoardList() {
		log.info("getCeventBoardList() is working...");
		return eventMapper.getCeventBoardList();
	}

	@Override
	public List<CeventsBoardsVO> getCouponInfo(String user_id) {
		log.info("getCeventBoardList() is working...");
		return eventMapper.getMemberCeventBoardList(user_id);
	};

	
}
