const db=require('./models')
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

