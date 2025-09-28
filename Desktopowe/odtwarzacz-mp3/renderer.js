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

        songName.innerHTML = `Teraz gra: ${file.name}`
        
        playBtn.onclick = () => audioPlayer.play();
        pauseBtn.onclick = () => audioPlayer.pause();


      //załadowanie, update paska czasu i czasu, odtworzenie pliku
        audioPlayer.onloadedmetadata = () => {
            console.log("Metadata loaded. Duration:", audioPlayer.duration);
            time_seek.max = audioPlayer.duration;
         
            audioPlayer.ontimeupdate = () => {
                time_seek.value = audioPlayer.currentTime;
                const minutes = Math.floor(audioPlayer.currentTime / 60);
                const seconds = Math.floor(audioPlayer.currentTime % 60);      
                time.innerHTML = `${minutes}:${seconds.toString().padStart(2, '0')}`;
            }
            
 
            audioPlayer.play();
        }
            
        //update paska czasu
        audioPlayer.ontimeupdate = () => {
            time_seek.value = audioPlayer.currentTime;
            time_seek.value = audioPlayer.currentTime
        }
        //input paska czasu
        time_seek.oninput = () => {
            audioPlayer.currentTime = time_seek.value
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
setTimeout(() => {
    console.log("Testing slider movement...");
    time_seek.value = 50;
    console.log("Slider value set to:", time_seek.value);
}, 2000);
    } else {
        alert("Proszę wybrać plik MP3.");
    }
    
});

