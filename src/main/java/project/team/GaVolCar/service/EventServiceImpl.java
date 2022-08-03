package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.EventMapper;
import project.team.GaVolCar.vo.PeventsRentsVO;

@Slf4j
@Service
public class EventServiceImpl implements EventService{
	
	@Autowired
	private EventMapper eventMapper;
	
	@Override
	public List<PeventsRentsVO> getPeventsRentsList(){
		log.info("getPeventsRentsList() is working.....");
		return eventMapper.getPeventsRentsList();
	};
	
	
}
