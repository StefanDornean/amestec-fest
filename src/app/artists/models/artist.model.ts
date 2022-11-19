export class Artist {
    name: string;
    description: string;
    image: string;
    facebook: string;
    instagram: string;
    youtube: string;


    constructor(artist: any = {}){
        this.name = artist.name || '';
        this.description = artist.description || '';
        this.image = artist.image || '';
        this.facebook = artist.facebook || '';
        this.instagram = artist.instagram || '';
        this.youtube = artist.youtube || '';
    }
}
  