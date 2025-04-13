# Photo Matching Game

A Ruby on Rails application that lets users upload their photos and play a memory matching game with them.

## Features

- User authentication (sign up, login, logout)
- Photo upload and management
- Memory matching game with user's photos
- Score tracking
- Responsive design
- Animated card flips
- Mobile-friendly interface

## Technologies Used

- Ruby 3.2.2
- Rails 8.0.2
- PostgreSQL
- Bootstrap 5
- Active Storage for file uploads
- Devise for authentication

## Requirements

- Ruby 3.2.2
- PostgreSQL
- Node.js
- Yarn

## Installation

1. Clone the repository
```bash
git clone [your-repo-url]
cd my_rails_app
```

2. Install dependencies
```bash
bundle install
```

3. Setup database
```bash
rails db:create
rails db:migrate
```

4. Start the server
```bash
rails server
```

5. Visit http://localhost:3000 in your browser

## Game Instructions

1. Sign up for an account
2. Upload at least 8 photos
3. Click "Play Game" to start
4. Match pairs of identical photos
5. Score points for matches, lose points for mismatches
6. Complete the game by finding all pairs

## Development

- The game uses Active Storage for photo management
- Photos are validated for size and type
- Game state is managed client-side with JavaScript
- Scores are saved to the database upon game completion

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
