user = User.create(
    username: "sample_user",
    email: "user@example.com",
    password: "password",
    created_at: Time.now,
    updated_at: Time.now
)

recipes_data = [
{
    title: "Recipe 1",
    ingredients: "Ingredient 1, Ingredient 2",
    instructions: "Instructions for Recipe 1",
    servings: 2,
    user: user,
    images: ["https://plus.unsplash.com/premium_photo-1676234917179-a7b1ca98c984?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D"],
    created_at: Time.now,
    updated_at: Time.now
},
{
    title: "Recipe 2",
    ingredients: "Ingredient 3, Ingredient 4",
    instructions: "Instructions for Recipe 2",
    servings: 4,
    user: user,
    images: ["https://images.unsplash.com/photo-1464454709131-ffd692591ee5?auto=format&fit=crop&q=80&w=876&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
    created_at: Time.now,
    updated_at: Time.now
},
{
    title: "Recipe 3",
    ingredients: "Ingredient 5, Ingredient 6",
    instructions: "Instructions for Recipe 3",
    servings: 3,
    user: user,
    images: ["https://images.unsplash.com/photo-1511688878353-3a2f5be94cd7?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"],
    created_at: Time.now,
    updated_at: Time.now
}
]


recipes_data.each do |recipe_data|
    Recipe.create(recipe_data)
end
