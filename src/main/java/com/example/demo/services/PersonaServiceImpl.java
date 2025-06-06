package com.example.demo.services;

import com.example.demo.DTO.PersonaBasicaDTO;
import com.example.demo.entities.Persona;
import com.example.demo.repositories.BaseRepository;
import com.example.demo.repositories.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.modelmapper.ModelMapper;


import java.util.ArrayList;
import java.util.List;


@Service
public class PersonaServiceImpl extends BaseServiceImpl<Persona,Long> implements PersonaService {

    @Autowired
    private PersonaRepository personaRepository;

    public PersonaServiceImpl(BaseRepository<Persona, Long> baseRepository, PersonaRepository personaRepository) {
        super(baseRepository);
        this.personaRepository = personaRepository;
    }

    @Override
    public List<Persona> search(String filtro) throws Exception {
        try{
            List <Persona> personas = personaRepository.findByNombreContainingOrApellidoContaining(filtro,filtro);
            //List<Persona> personas = personaRepository.search(filtro);
            //List<Persona> personas = personaRepository.searchNativo(filtro);

            return personas;
        }catch (Exception e){
            throw new Exception(e.getMessage());
        }
    }

    @Override
    public Page<Persona> search(String filtro, Pageable pageable) throws Exception {
        try{
            Page <Persona> personas = personaRepository.findByNombreContainingOrApellidoContaining(filtro,filtro,pageable);
            //Page<Persona> personas = personaRepository.search(filtro,pageable);
            //Page<Persona> personas = personaRepository.searchNativo(filtro, pageable);

            return personas;
        }catch (Exception e){
            throw new Exception(e.getMessage());
        }
    }

    @Override
    public List<PersonaBasicaDTO> findAllDto() throws Exception {
        try {
            List<Persona> personas = baseRepository.findAll();
            List<PersonaBasicaDTO> dtos = new ArrayList<>();
            ModelMapper modelMapper = new ModelMapper();

            for (Persona persona : personas) {
                dtos.add(modelMapper.map(persona, PersonaBasicaDTO.class));
            }

            return dtos;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    @Override
    public Page<PersonaBasicaDTO> findAllDto(Pageable pageable) throws Exception {
        try {
            Page<Persona> personas = baseRepository.findAll(pageable);
            ModelMapper modelMapper = new ModelMapper();
            return personas.map(p -> modelMapper.map(p, PersonaBasicaDTO.class));
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

}
