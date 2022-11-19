import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { Artist } from './models/artist.model';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-artists',
  templateUrl: './artists.component.html'
})

export class ArtistsComponent {
  public artists: Artist[] = [];

  constructor(private http: HttpClient){
      this.getJSON().subscribe(data => {
        this.artists = data;
      });      
  }

  public getJSON(): Observable<any> {
    return this.http.get('../assets/data/artists.json');
  }

  getLink(artist: any): string {
    console.log(artist);
    return `/artist-page?artist=${btoa(JSON.stringify(artist))}`;
  }
}

