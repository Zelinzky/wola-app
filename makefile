# makefile to build the project, run locally and run the tests

default: build

build:
	@echo "Building the project"
	@go build -o bin/ ./...

run: db-up
	@echo "Running the project"
	@air

tidy:
	@echo "Tidying the project"
	@go mod tidy

clean: db-down

db-up:
		@podman compose --file compose.yaml up --detach

db-down:
		@podman compose --file compose.yaml down
