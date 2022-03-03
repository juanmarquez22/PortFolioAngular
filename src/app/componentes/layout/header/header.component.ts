import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  titulo:any;
  constructor(private datosPortaf:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortaf.obtenerDatos().subscribe(data =>{
      this.titulo=data.titulo
    })
  }

}
