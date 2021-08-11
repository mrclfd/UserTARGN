FROM fusuf/whatsasena:latest

RUN git clone $GITHUB_REPO_URL /root/UserTARGN
WORKDIR /root/UserTARGN/
ENV TZ=Asia/Jakarta
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
