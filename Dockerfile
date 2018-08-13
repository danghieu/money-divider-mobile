FROM danghieu193/ionic2

# ——————————
# Install Node
# ——————————
ENV NODE_VERSION 9.3.0
RUN cd && \
    wget -q http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
    tar -xzf node-v${NODE_VERSION}-linux-x64.tar.gz && \
    mv node-v${NODE_VERSION}-linux-x64 /opt/node && \
    rm node-v${NODE_VERSION}-linux-x64.tar.gz
ENV PATH ${PATH}:/opt/node/bin

# ——————————
# Install Yarn
# ——————————
RUN npm install yarn --global

# ——————————
# Install React-Native package
# ——————————
RUN npm install react-native-cli --global