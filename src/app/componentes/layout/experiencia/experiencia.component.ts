import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-experiencia',
  templateUrl: './experiencia.component.html',
  styleUrls: ['./experiencia.component.css']
})
export class ExperienciaComponent implements OnInit {

  expList:any;
  constructor(private datosPortaf:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortaf.obtenerDatos().subscribe(data => {
      this.expList=data.experiencia
    })
  }

}
