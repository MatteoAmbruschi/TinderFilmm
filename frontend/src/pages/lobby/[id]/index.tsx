import * as React from "react"

import { Button } from "@/components/ui/button"
import {
  Card,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"
import styles from "@/styles/card.module.css"
import { useRouter } from "next/router"
import { useParams } from "next/navigation"
import { useEffect } from "react"
import axios from "axios"


function LobbyId({setIdApp, setIdUser, idApp, className}: {idApp: any, setIdApp: any, className: string, setIdUser: any}) {
  const router = useRouter()
  const path = useParams()

  useEffect(() => {
    if(path && Number(path.id) && !idApp) {
      router.push(`/invite?lobby=${path.id}`);
    }
  }, [path])


  const copyUrl = async () => {
    try {
      await navigator.clipboard.writeText(`${process.env.NEXT_PUBLIC_URL}/invite?lobby=${idApp}`);
    } catch (err) {
      console.log('Failed to copy: ', err)
    }
  }

  const deleteLobby = async () => {
    axios.get(process.env.NEXT_PUBLIC_BACKEND + '/deleteCookies', {
      withCredentials: true,
    })
    .then((response) => {
      if(response.status === 200) {
        console.log('ciao')
        setIdApp(null);
        setIdUser(null);
        router.push('/');
        return;
      } else{
        console.log('Error in delete')
      }
    })
  }

  
  return (
    <div className={`${styles.card} ${className}`}>
      <Card className="w-1/3 min-w-60">
        <CardHeader>
          <CardTitle>Copy Link</CardTitle>
          <CardDescription>You can share the link to play.</CardDescription>
        </CardHeader>

        <CardFooter className="flex flex-col justify-between">
        <Button className="w-full" onClick={copyUrl}>COPY LINK</Button>
        or
          <Button variant="secondary" className="w-full" onClick={deleteLobby}>CLOSE LOBBY</Button>
        </CardFooter>
      </Card>
    </div>
  )
}

export default LobbyId