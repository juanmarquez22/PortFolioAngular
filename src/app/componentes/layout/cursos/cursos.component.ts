import { Component, OnInit } from '@angular/core';
import { PortfolioService } from 'src/app/servicios/portfolio.service';

@Component({
  selector: 'app-cursos',
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css']
})
export class CursosComponent implements OnInit {

  cursosList:any;
  constructor(private datosPortaf:PortfolioService) { }

  ngOnInit(): void {
    this.datosPortaf.obtenerDatos().subscribe(data =>{
      this.cursosList=data.cursos;
    })
  }

}
