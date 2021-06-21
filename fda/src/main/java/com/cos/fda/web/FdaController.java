package com.cos.fda.web;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.cos.fda.domain.Fda;
import com.cos.fda.domain.FdaRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
public class FdaController {

	private final FdaRepository fdaRepository;
	
	@CrossOrigin
	@GetMapping("/fda")
	public List<Fda> findAll(){
		return fdaRepository.findAll(PageRequest.of(1, 20)).getContent();
	}
	
	@CrossOrigin
	@GetMapping("/fda/{id}")
	public Fda findById(@PathVariable String id) {
		return fdaRepository.findById(id).get();
	}
}




