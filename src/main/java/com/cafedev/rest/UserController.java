package com.cafedev.rest;

import com.cafedev.dto.UserDTO;
import com.cafedev.dto.UserRequestDTO;
import com.cafedev.model.User;
import com.cafedev.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Nhut Nguyen on 01-07-2018.
 */

@RestController
@RequestMapping(value = "/rest/", produces = MediaType.APPLICATION_JSON_VALUE)
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(method = GET, value = "/user/{userId}")
	@PreAuthorize("hasRole('ADMIN')")
	public User loadById(@PathVariable Long userId) {
		return this.userService.findById(userId);
	}

	@RequestMapping(method = GET, value = "/user/all")
	@PreAuthorize("hasRole('ADMIN')")
	public List<User> loadAll() {
		return this.userService.findAll();
	}

	/*
	 * We are not using userService.findByUsername here(we could), so it is good
	 * that we are making sure that the user has role "ROLE_USER" to access this
	 * endpoint.
	 */
	@RequestMapping("/whoami")
	@PreAuthorize("hasRole('USER')")
	public UserDTO user(Principal user) {
		User userRes = this.userService.findByUsername(user.getName());
		UserDTO userDto = new UserDTO();
		userDto.copyFrom(userRes);
		return userDto;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "no-auth/create")
	public ResponseEntity<UserDTO> create(@RequestBody UserRequestDTO userDto) {
		User user = userDto.toUser();
		user = this.userService.save(user);
		if(user == null) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		UserDTO userDTO = new UserDTO();
		userDTO.copyFrom(user);
		return new ResponseEntity<UserDTO>(userDTO, HttpStatus.OK);
		
		
	}
}
