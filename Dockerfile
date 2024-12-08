FROM oven/bun:1-alpine AS builder
WORKDIR /app
COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile
COPY . .
RUN bun run build

FROM oven/bun:1-alpine AS runner
WORKDIR /app
COPY --from=builder /app/package.json .
COPY --from=builder /app/bun.lockb .
COPY --from=builder /app/next.config.ts .
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules

CMD ["bun", "start"]
EXPOSE 3000