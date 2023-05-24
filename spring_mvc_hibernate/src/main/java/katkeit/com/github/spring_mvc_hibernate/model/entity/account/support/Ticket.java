package katkeit.com.github.spring_mvc_hibernate.model.entity.account.support;

import org.hibernate.validator.constraints.Range;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.Setter;

/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-05-23
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
public abstract class Ticket
{
	/* EXAMPLE: 202305SUN01 */
	@NotNull
	@Pattern(regexp = "[a-zA-Z0-9]")
	protected String ticketID;
	
	@NotNull
	@Min(value = 4, message = "Doesn't meet the minimum length requirement.")
	@Max(value = 16, message = "Exceeds the maximum length requirement.")
	@Pattern(regexp = "[a-zA-Z0-9]")
	protected String username;
	
	@NotNull
	@Range(min = 2, max = 64, message = "Doesn't meet the length requirement. Length: 2-64")
	protected String email;
	
	@NotNull
	protected String product;
	
	@NotNull
	protected String message;
}