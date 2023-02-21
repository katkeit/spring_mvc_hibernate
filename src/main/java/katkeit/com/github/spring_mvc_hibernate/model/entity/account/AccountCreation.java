package katkeit.com.github.spring_mvc_hibernate.model.entity.account;

import java.util.HashMap;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-13
 *
 * github: 
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

public class AccountCreation extends Account
{
	// username
	
	@Range(min = 2, max = 16, message = "Doesn't meet the length requirement. Length: 2-16")
	private String displayName;
	
	//password
	
	@NotNull
	private String reEnterPassword;
	
	// email
	
	@Range(min = 1, max = 25, message = "Doesn't meet the length requirement. Length: 1-25")
	private String firstName;
	
	@Range(min = 1, max = 25, message = "Doesn't meet the length requirement. Length: 1-25")
	private String lastName;
	
	// birthMonth
	// birthDay
	//isHuman
	
	public AccountCreation()
	{
		super();
	}
	
	@Override
	public String getUsername() {
		return super.getUsername();
	}
	
	@Override
	public void setUsername(String username) {
		super.setUsername(username);
	}
	
	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	@Override
	public String getPassword() {
		return super.getPassword();
	}
	
	@Override
	public void setPassword(String password) {
		super.setPassword(password);
	}
	
	public String getReEnterPassword() {
		return reEnterPassword;
	}

	public void setReEnterPassword(String reEnterPassword) {
		this.reEnterPassword = reEnterPassword;
	}

	@Override
	public String getEmail() {
		return super.getEmail();
	}
	
	@Override
	public void setEmail(String email) {
		super.setEmail(email);
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public Integer getBirthMonth() {
		return super.getBirthMonth();
	}
	
	@Override
	public void setBirthMonth(Integer birthMonth) {
		super.setBirthMonth(birthMonth);
	}
	
	@Override
	public Integer getBirthDay() {
		return super.getBirthDay();
	}
	
	@Override
	public void setBirthDay(Integer birthDay) {
		super.setBirthDay(birthDay);
	}
	@Override
	public Boolean getIsHuman() {
		return super.getIsHuman();
	}
	
	@Override
	public void setIsHuman(Boolean isHuman) {
		super.setIsHuman(isHuman);
	}
	
	@Override
	public HashMap<Integer, String> getMonthOptions() {
		return super.getMonthOptions();
	}
	
	@Override
	public HashMap<String, Integer[]> getDayOptions() {
		return super.getDayOptions();
	}
}