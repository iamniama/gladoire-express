const db=require('./models')
db.category.create({
    cat_name: "dummy",
    cat_desc: "to delete"
}).then((newitem)=>{
    db.category.destroy({where: {id: newitem.id}})
})
db.category.create({
    cat_name: "dummy",
    cat_desc: "to delete"
}).then((newitem)=>{
    db.category.destroy({where: {id: newitem.id}})
})

db.category.create({
    cat_name: "Practices",
    cat_desc: "Meditation, ritual, and other practices"
}).then(()=>{
    db.category.create({
        cat_name: "Music",
        cat_desc: "Music, live or recorded"
    }).then(()=>{
        db.category.create({
            cat_name: "Scents",
            cat_desc: "Incense, oils, and perfumes to scent the space"
        }).then(()=>{
            db.category.create({
                cat_name: "Enhancers",
                cat_desc: "Cacao, cannabis, and other substances to enhance the practice"
            })
        })
    })
})
/*

let catinfo = db.category.findAll({include:[
        {model: db.item,
            where: {userId: 3}}
    ]})
    .then((catinfo)=>{
            catinfo.forEach((item)=>{
                console.log(item.cat_name)
                item.items.forEach((catItem)=>{
                    console.log(catItem.itm_name)
                })
            })
})
console.log(catinfo)

db.session.findAll({where: {userId: 3}, include:[
        db.session_item, {model: db.item, include: db.category}]})
    .then((sessInfo)=>{
        console.log("========================================================")
        //
        sessInfo.forEach((session)=>{
            session.items.forEach((item)=>{
                console.log(`${item.category.cat_name}: ${item.itm_name}`)
            })
        })
    })

db.post.findAll({include:[{model: db.comment, include:[db.user]}]})
.then((posts)=>{
    posts.forEach((post)=>{
        post.comments.forEach((cmt)=>{
            console.log(`At ${cmt.cmnt_date}, ${cmt.user.user_name} said "${}"`)
        })
    })
})

*/