class PlayList{
  final String artName;
  final String arThumbnails;
  final String arSongTitle;
  final String arSongDuration;

  PlayList(this.artName,this.arThumbnails,this.arSongTitle,this.arSongDuration);
}

  final List<PlayList> playlistModels = [
  PlayList('Billi Ellish','assets/not.jpg','No Time to Die','4:02'),
  PlayList('The Weekend','assets/pl2.jfif','Blinding Lights','3:21'),
  PlayList('Davis Ligua','assets/pl3.jfif','Dont Start Now','3:54'),
  PlayList('Eminem','assets/pl4.jfif','Godzilla','2:25'),
  PlayList('Saint John','assets/pl5.jfif','Roses','2:32'),
];