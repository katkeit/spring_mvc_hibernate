package katkeit.com.github.spring_mvc_hibernate.model.entity.account;

import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-02-22
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
public class AccountRecovery extends Account
{
	// --- Username Recovery ---
	// Required: Birthday
	// Required: Email
	
	// --- Password Recovery ---
	// Required: Username
	// Required: Email
	
	// username
	// password
	
	@NotNull
	private String reEnterPassword;
	
	// email
	// birthMonth
	// birthDay
	// isHuman
	
	public AccountRecovery() {
		super();
	}
}