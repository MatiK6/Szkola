const player = document.getElementById("player");
const playBtn = document.getElementById("play");
const pauseBtn = document.getElementById("pause");
const time_seek = document.getElementById("time_seek");
const time = document.getElementById("time");
const volume_seek = document.getElementById("volume_seek");
const volume_display = document.getElementById("volume")
const songName = document.getElementById("song_name");

document.getElementById('fileInput').addEventListener('change', function(event) {
    const file = event.target.files[0];
    
    if (file && file.type === 'audio/mpeg') {
        const audioPlayer = document.getElementById('audioPlayer');
        const audioSource = document.getElementById('audioSource');

        // Utwórz URL z pliku
        const objectURL = URL.createObjectURL(file);
        console.log("Odtwarzanie pliku:", objectURL); // Debugowanie

        // Ustaw URL jako źródło dla playera
        audioSource.src = objectURL;

        // Załaduj plik 
        audioPlayer.load();
        audioPlayer.play();

        songName.innerHTML = `Teraz gra: ${file.name}`
        
        playBtn.onclick = () => audioPlayer.play();
        pauseBtn.onclick = () => audioPlayer.pause();

      
        // max value paska czasu
        audioPlayer.onloadedmetadata = () => {
            time_seek.max = audioPlayer.duration; 
        }
            
        //update paska czasu
        audioPlayer.ontimeupdate = () => {
            time_seek.value = audioPlayer.currentTime;
        }
        //input paska czasu
        time_seek.oninput = () => {
            audioPlayer.currentTime = time_seek.value
        }

        //update czasu
        audioPlayer.ontimeupdate = () => {
            const minutes = Math.floor(audioPlayer.currentTime / 60);
            const seconds = Math.floor(audioPlayer.currentTime % 60);      
            time.innerHTML = `${minutes}:${seconds}`
        }

        //dzwiek

        volume_seek.oninput = () => {
            audioPlayer.volume = volume_seek.value / 100
            volume_display.innerHTML = `${volume_seek.value}%`;
        }



        // Sprawdzenie, czy odtwarzanie się rozpoczęło
        audioPlayer.onplay = () => {
            console.log("Odtwarzanie rozpoczęte");
        };

        // Obsługa błędów
        audioPlayer.onerror = () => {
            console.error("Błąd odtwarzania pliku");
        };

    } else {
        alert("Proszę wybrać plik MP3.");
    }
    
});

