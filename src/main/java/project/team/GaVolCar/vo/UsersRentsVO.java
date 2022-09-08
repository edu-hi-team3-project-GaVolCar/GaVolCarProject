package project.team.GaVolCar.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class UsersRentsVO {
	
	private int rez_no;
	private String rent_start_date;
	private String rent_end_date;
	private String final_cost;
	private int hipass;
	private int baby_car_seat;
	private String user_id;
	private int car_no;

	private String user_pw;
	private String user_name;
	private int user_phone_number;
	private int user_age;
	private String user_email;
}
