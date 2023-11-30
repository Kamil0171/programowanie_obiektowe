
public record MusicTrack(String title, String artist, int durationInSeconds) {
    // Konstruktor przyjmujący tytuł i artystę, domyślna długość utworu to 180 sekund
    public MusicTrack(String title, String artist) {
        this(title, artist, 180);
    }

    public static void main(String[] args) {
        // Przypadek testowy
        MusicTrack track = new MusicTrack("Song Title", "Artist Name");
        System.out.println(track);
    }
}
