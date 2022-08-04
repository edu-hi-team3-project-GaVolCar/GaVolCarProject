package project.team.GaVolCar.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class AreaMapperTest {

	@Autowired
	private AreaMapper areaMapper;
	
	@Test
	void testAreaMapper() {
		System.out.println(areaMapper.getAreaList());
	}

}
