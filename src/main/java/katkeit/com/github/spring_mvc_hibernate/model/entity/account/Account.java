package katkeit.com.github.spring_mvc_hibernate.model.entity.account;

import java.util.HashMap;

import org.hibernate.validator.constraints.Range;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-13
 *
 * license: Apache License 2.0
 * description:
 *		Copyright 2023 Katelyn Eitel 
 * 		Licensed under the Apache License, Version 2.0 (the "License");
 * 		you may not use this file except in compliance with the License.
 * 		You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 *	
 *		Unless required by applicable law or agreed to in writing, software
 *		distributed under the License is distributed on an "AS IS" BASIS,
 *		WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *		See the License for the specific language governing permissions and
 *		limitations under the License.
 */

public abstract class Account
{
	@NotNull
	@Min(value = 4, message = "Doesn't meet the minimum length requirement.")
	@Max(value = 16, message = "Exceeds the maximum length requirement.")
	@Pattern(regexp = "[a-zA-Z0-9]")
	protected String username;
	
	@NotNull
	@Range(min = 8, max = 32, message = "Doesn't meet the length requirement. Length: 8-32")
	@Pattern(regexp = "[a-zA-Z0-9!#$%+-?@^_|~]", message = "Requires one lower and upper case character, one number between 0-9, and one special character. Allowed: !#$%+-?@^_|~")
	protected String password;
	
	/**
	 * Terms:
	 * 	>> local	All the characters BEFORE the @ in the email address.
	 *  >> domain	All the characters AFTER the @ in the email address.
	 *  
	 * Notes:
	 * 	>> Local must be at least 2 characters, but cannot exceed 64 characters.
	 * 	>> Domain cannot exceed 190 characters.
	 *  >> Entire email address cannot exceed 254.
	 * 
	 * TODO: Must implement a validation check to handle these requirements.
	 */
	@NotNull
	@Range(min = 2, max = 64, message = "Doesn't meet the length requirement. Length: 2-64")
	protected String email;
	
	@NotNull
	@Range(min = 1, max = 12, message = "Select a month from Januaray to December.")
	protected Integer birthMonth;
	
	@NotNull
	@Range(min = 1, max = 31)
	protected Integer birthDay;
	
	@NotNull
	protected Boolean isHuman;
	
	protected HashMap<Integer, String> monthOptions = new HashMap<Integer, String>();
	protected HashMap<String, Integer[]> dayOptions = new HashMap<String, Integer[]>();
	
	private static final Integer[] monthDays31 = new Integer[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};
	private static final Integer[] monthDays30 = new Integer[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};
	private static final Integer[] monthDays29 = new Integer[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};

	protected Account()
	{
		// Initialize the monthOptions with the month's name and number.
		monthOptions.put(1, "January");
		monthOptions.put(2, "February");
		monthOptions.put(3, "March");
		monthOptions.put(4, "April");
		monthOptions.put(5, "May");
		monthOptions.put(6, "June");
		monthOptions.put(7, "July");
		monthOptions.put(8, "August");
		monthOptions.put(9, "September");
		monthOptions.put(10, "October");
		monthOptions.put(11, "November");
		monthOptions.put(12, "December");
		
		// Initialize the dayOptions with the month's name and all the days to that month.
		dayOptions.put("January", monthDays31);
		dayOptions.put("February", monthDays29);
		dayOptions.put("March", monthDays31);
		dayOptions.put("April", monthDays30);
		dayOptions.put("May", monthDays31);
		dayOptions.put("June", monthDays30);
		dayOptions.put("July", monthDays31);
		dayOptions.put("August", monthDays31);
		dayOptions.put("September", monthDays30);
		dayOptions.put("October", monthDays31);
		dayOptions.put("November", monthDays30);
		dayOptions.put("December", monthDays31);
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(Integer birthMonth) {
		this.birthMonth = birthMonth;
	}

	public Integer getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Integer birthDay) {
		this.birthDay = birthDay;
	}

	public Boolean getIsHuman() {
		return isHuman;
	}

	public void setIsHuman(Boolean isHuman) {
		this.isHuman = isHuman;
	}

	public HashMap<Integer, String> getMonthOptions() {
		return monthOptions;
	}

	public HashMap<String, Integer[]> getDayOptions() {
		return dayOptions;
	}
}