class Film < ActiveRecord::Base
  self.table_name = 'film'

  # We could do this IF (and only if) columns and tables
  #     are named correctly (matching rails expectation)
  # has_many :film_actors
  # has_many :actors, through: :film_actions

  def actors

    # 1) get all film_actors (from the join table)
    # 2) get their actors
    film_actors = FilmActor.where film_id: film_id
    Actor.where actor_id: film_actors.pluck(:actor_id)

    # Actor.where actor_id: [3, 22, 38, ...]

    # Actor.where film_id:
  end
end

# select * from film
# inner join film_actor on film_actor.film_id = film.film_id
# inner join actor on actor.actor_id = film_actor.actor_id
# where film.film_id = 111;
