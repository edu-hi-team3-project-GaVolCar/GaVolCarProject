package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.PeventsRentsVO;
import project.team.GaVolCar.vo.RentsVO;
import project.team.GaVolCar.vo.TransCountMonthVO;
import project.team.GaVolCar.vo.TransCountTypeVO;
import project.team.GaVolCar.vo.TransVO;

public interface TransService {
	
	public List<TransVO> getTransList();
	public List<TransCountMonthVO> getMonth();
	public List<TransCountTypeVO> getType();
	
	
}
