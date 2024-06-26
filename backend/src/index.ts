import { PrismaClient } from "@prisma/client";
import express, { Request, Response } from "express";
import createError from "http-errors"

const prisma = new PrismaClient()

const app = express()

app.use(express.json())

app.get('/notes', async (req: Request, res: Response) => {
    const posts = await prisma.notes.findMany({})
    res.json(posts)
})

// handle 404 error
app.use((req: Request, res: Response, next: Function) => {
    next(createError(404))
})

app.listen(3000, () =>
    console.log(`⚡️[server]: Server is running at https://localhost:3000`)
)
