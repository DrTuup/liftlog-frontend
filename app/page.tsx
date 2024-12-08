"use client";

import { Button } from "@/components/ui/button";

export default function Home() {
  return (
    <div className="flex text-center flex-col gap-4 items-center justify-center min-h-screen p-10">
      <h1 className="font-bold text-4xl">Welcome</h1>
      <p>
        Looks like you are not logged in yet. Login or create an account to
        start logging your progress!
      </p>
      <Button className="w-2/3">Register</Button>
      <Button className="w-2/3">Login</Button>
    </div>
  );
}
