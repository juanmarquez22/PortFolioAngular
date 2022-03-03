import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-educacion',
  templateUrl: './educacion.component.html',
  styleUrls: ['./educacion.component.css']
})
export class EducacionComponent implements OnInit {
  gradoList:any;
  pregradoList:any;
  idiomaList:any;
  constructor(private datosPortaf:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortaf.obtenerDatos().subscribe(data =>{
      this.gradoList=data.estudios_grado;
      this.pregradoList=data.estudios_pregrado;
      this.idiomaList=data.idiomas;
    })
  }

}
