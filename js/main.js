
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
            charactersData: []
        }
    }
});
characterStore.mount("#app");
