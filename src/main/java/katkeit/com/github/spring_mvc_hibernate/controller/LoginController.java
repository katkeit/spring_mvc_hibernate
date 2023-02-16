package katkeit.com.github.spring_mvc_hibernate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import katkeit.com.github.spring_mvc_hibernate.model.entity.account.AccountCreation;
import katkeit.com.github.spring_mvc_hibernate.model.entity.account.AccountLogin;
import katkeit.com.github.spring_mvc_hibernate.model.entity.account.AccountRecovery;

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

@Controller
@RequestMapping("login")
public class LoginController
{
	@RequestMapping("/")
	public String login(Model model)
	{
		model.addAttribute("accountLogin", new AccountLogin());
		return "login-page";
	}
	
	@RequestMapping("/register")
	public String register(Model model)
	{
		model.addAttribute("accountCreation", new AccountCreation());
		return "register-page";
	}
	
	@RequestMapping("/recovery")
	public String accountRecovery(Model model)
	{
		model.addAttribute("accountRecovery", new AccountRecovery());
		return "account-recovery-page";
	}
}