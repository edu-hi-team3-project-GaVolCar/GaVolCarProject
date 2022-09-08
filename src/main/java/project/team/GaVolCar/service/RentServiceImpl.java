package project.team.GaVolCar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;
import project.team.GaVolCar.mapper.RentsMapper;
import project.team.GaVolCar.vo.RentsVO2;

@Slf4j
@Service
public class RentServiceImpl implements RentService {

	@Autowired
	private RentsMapper rentsMapper;

	@Override
	public List<RentsVO2> getRentList(String user_id) {
		log.info("getRentList()......");
		List<RentsVO2> rentVO2= rentsMapper.getRentsList2(user_id);
		for(RentsVO2 e: rentVO2) {
			if(e.getHipass()==1) {
				e.setHipass2("O");
			}
			if(e.getBaby_car_seat()==1) {
				e.setBaby_car_seat2("O");
			}
		}


		return  rentVO2;
	}

	@Override
	public List<RentsVO2> getAllRentsList() {
		log.info("getAllRentsList()....");
		List<RentsVO2> rentVO2= rentsMapper.getAllRentsList();
		for(RentsVO2 e: rentVO2) {
			if(e.getHipass()==1) {
				e.setHipass2("O");
			}
			if(e.getBaby_car_seat()==1) {
				e.setBaby_car_seat2("O");
			}
		}


		return  rentVO2;
	}





}
