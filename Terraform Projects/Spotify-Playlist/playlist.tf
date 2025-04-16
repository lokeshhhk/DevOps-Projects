resource "spotify_playlist" "Tollywood" {
  name   = "Tollywood"
  tracks = ["0dnDTvdUco2UbaBjUtPxNS"]
}


data "spotify_search_track" "Anirudh" {
  artist = "Anirudh Ravichander"
  limit  = 10
}

resource "spotify_playlist" "AniBlast_Songs" {
  name   = "Ani-Blast Songs"
  tracks = flatten([data.spotify_search_track.Anirudh.tracks[*].id])
}
