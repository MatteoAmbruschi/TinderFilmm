import axios from "axios";
export default function CheckMatchLike ({dataMatch, setIsMatch}: {dataMatch: any, setIsMatch:any}) {
    /* console.log(dataMatch) */

    axios.put(process.env.NEXT_PUBLIC_BACKEND + '/checkMatchLike', {dataMatch})
    .then((response) => {
        if(response.status === 200) {
            setIsMatch(response.data)
            return response.data
          } else {
            console.log('Error fetching movie types:', response.status);
          }
        }).catch((error) => {
          console.log("Error sending request:", error)
        })
}