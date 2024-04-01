
const characterStore = Vue.createApp({
    //Fist call
    created() {
        this.isLoading = true;
        fetch(`http://localhost:8888/onepiece-api/public/characters`)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.charactersData = data;
        })
        .catch(error => {
            console.log(error);
            // error information for users
            this.error = true;
        })
        .finally(() => {
            // Regardless of whether the load succeeds or fails, the loading indicator will eventually be hidden
            this.isLoading = false;
        });
    },
    data() {
        return {
            charactersData: [],
            mediaData: {},
            isLoading: false,
            showLightbox: false,
            error: false
        }
    },
    methods: {
        //Second call
        fetchCharacterMedia(characterId, event) {
            event.preventDefault();
            console.log(`Fetching media for character ID: ${characterId}`);
            this.isLoading = true;
            console.log('isLoading set to true - Start loading characters');
            fetch(`http://localhost:8888/onepiece-api/public/media/${characterId}`)
            .then(res => res.json())
            .then(data => {
                this.mediaData = data;
                this.showLightbox = true;
            })
            .catch(error => {
                console.error("Fetching character media failed:", error);
                this.error = true;
            })
            .finally(() => {
                this.isLoading = false;
            });
        }
    }
    
});
characterStore.mount("#app");
