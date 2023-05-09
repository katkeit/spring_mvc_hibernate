package katkeit.com.github.spring_mvc_hibernate.model.entity.account;

import java.util.HashMap;

import org.hibernate.validator.constraints.Range;

import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

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

@Getter @Setter
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
	
	private boolean privacyPolicyChecked;
	private boolean tosChecked;
	private boolean eulaChecked;
	
	//isHuman
	
	public AccountCreation()
	{
		super();
	}
}