
const characterStore = Vue.createApp({
    created() {
        fetch(`http://localhost:8888/onepiece-api/public/characters`)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.charactersData = data;
        })
        .catch(error => {
            console.log(error);
            // error information for users
        })
    },
    data() {
        return {
            charactersData: [],
            mediaData: {},
            showLightbox: false,
            error: false
        }
    },
    methods: {
        fetchCharacterMedia(characterId) {
            console.log(`Fetching media for character ID: ${characterId}`);
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
        }
    }
    
});
characterStore.mount("#app");
