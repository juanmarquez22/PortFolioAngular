import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContactoComponent } from './componentes/layout/contacto/contacto.component';
import { CursosComponent } from './componentes/layout/cursos/cursos.component';
import { EducacionComponent } from './componentes/layout/educacion/educacion.component';
import { EncabezadoComponent } from './componentes/layout/encabezado/encabezado.component';
import { ExperienciaComponent } from './componentes/layout/experiencia/experiencia.component';
import { InformacionComponent } from './componentes/layout/informacion/informacion.component';

const routes: Routes = [
  {
    path: 'inicio',
    component: EncabezadoComponent
  },
  {
    path: 'educacion',
    component: EducacionComponent
  },
  {
    path: 'experiencia',
    component: ExperienciaComponent
  },
  {
    path: 'cursos',
    component: CursosComponent
  },
  {
    path: 'info',
    component: InformacionComponent
  },
  {
    path: 'contacto',
    component: ContactoComponent
  },
  {
    path: '**',
    redirectTo:'inicio'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
