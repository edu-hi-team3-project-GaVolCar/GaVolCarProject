package project.team.GaVolCar.service;

import java.util.List;

import project.team.GaVolCar.vo.RentsVO2;

public interface RentService {
	
	public List<RentsVO2> getRentList(String user_id);
	public List<RentsVO2> getAllRentsList();

}
