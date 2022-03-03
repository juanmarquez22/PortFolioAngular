import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EncabezadoComponent } from './componentes/layout/encabezado/encabezado.component';
import { EducacionComponent } from './componentes/layout/educacion/educacion.component';
import { ExperienciaComponent } from './componentes/layout/experiencia/experiencia.component';
import { CursosComponent } from './componentes/layout/cursos/cursos.component';
import { PortfolioService } from './servicios/portfolio.service';
import { HttpClientModule } from '@angular/common/http';
import { HeaderComponent } from './componentes/layout/header/header.component';
import { InformacionComponent } from './componentes/layout/informacion/informacion.component';
import { ContactoComponent } from './componentes/layout/contacto/contacto.component';

@NgModule({
  declarations: [
    AppComponent,
    EncabezadoComponent,
    EducacionComponent,
    ExperienciaComponent,
    CursosComponent,
    HeaderComponent,
    InformacionComponent,
    ContactoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
