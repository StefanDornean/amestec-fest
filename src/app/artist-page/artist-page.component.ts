import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Artist } from '../artists/models/artist.model';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-artist-page',
  templateUrl: './artist-page.component.html'
})

export class ArtistPageComponent {
  public artist: Artist | undefined;

  constructor(private http: HttpClient, private route: ActivatedRoute){   
  }

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => { 
        this.artist = new Artist(JSON.parse(atob(params['artist']))); 
    });
 }

  public getJSON(): Observable<any> {
    return this.http.get('../assets/data/artists.json');
  }
}

