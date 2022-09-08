package project.team.GaVolCar.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

// https://galid1.tistory.com/735
@AutoConfigureMockMvc
@SpringBootTest
class BoardControllerTest {
	
	@Autowired
	private MockMvc mvc;
	
	@Test
	void boardControllerTest() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/notice/userList/").accept(org.springframework.http.MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}

}
