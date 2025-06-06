package com.example.demo.DTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonaBasicaDTO {

    // Se creo esta clase en este paquete de DTO, para aplicar una muestra de que el
    //DTO fue aplicado correctamente, como se muestra como ejemplo en el video.
    private String nombre;
    private String apellido;
    private int dni;
}

