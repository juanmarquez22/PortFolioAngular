import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-informacion',
  templateUrl: './informacion.component.html',
  styleUrls: ['./informacion.component.css']
})
export class InformacionComponent implements OnInit {

  info:any;
  constructor(private datosPortaf:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortaf.obtenerDatos().subscribe(data=>{
      this.info=data.info_personal
    })
  }

}
